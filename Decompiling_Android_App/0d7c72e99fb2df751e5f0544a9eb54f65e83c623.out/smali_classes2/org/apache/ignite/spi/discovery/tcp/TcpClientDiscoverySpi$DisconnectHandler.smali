.class Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpClientDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)V
    .locals 3

    .prologue
    .line 593
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .line 594
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-client-disco-disconnect-hnd"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 595
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 599
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 601
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$200(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 603
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_0

    .line 604
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Node is disconnected from topology, will try to reconnect."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 607
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 608
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 610
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 611
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 614
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 617
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order(J)V

    .line 619
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)Z

    .line 621
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/events/DiscoveryEvent;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client node reconnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/ignite/events/DiscoveryEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/cluster/ClusterNode;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiContext;->recordEvent(Lorg/apache/ignite/events/Event;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Disconnect handler was interrupted."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 637
    .end local v1    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_2
    return-void

    .line 633
    :catch_1
    move-exception v0

    .line 634
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to reconnect to topology after failure."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
