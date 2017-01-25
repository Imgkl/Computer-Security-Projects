.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckStatusSender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 3

    .prologue
    .line 2251
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 2252
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-disco-status-check-sender"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2254
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->setPriority(I)V

    .line 2255
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p2, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;

    .prologue
    .line 2247
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2260
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2261
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Status check sender has been started."

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2264
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-wide v8, v8, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    add-long v0, v6, v8

    .line 2266
    .local v0, "checkTimeout":J
    const-wide/16 v2, 0x0

    .line 2268
    .local v2, "lastSent":J
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2270
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 2271
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime()J

    move-result-wide v2

    .line 2273
    :cond_2
    add-long v6, v2, v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 2275
    .local v4, "timeout":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 2276
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2279
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-eq v6, v7, :cond_5

    .line 2280
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2281
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Stopping status check sender (SPI is not connected to topology)."

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2301
    .end local v4    # "timeout":J
    :cond_4
    return-void

    .line 2287
    .restart local v4    # "timeout":J
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gtz v6, :cond_6

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v6

    if-nez v6, :cond_7

    .line 2288
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2289
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping status check send [locNodeLastUpdate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v8, v8, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasRmts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2297
    :cond_7
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 2299
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    iget-object v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v8, v8, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/UUID;)V

    invoke-virtual {v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0
.end method
