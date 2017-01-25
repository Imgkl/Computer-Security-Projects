.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TcpServer"
.end annotation


# instance fields
.field private port:I

.field private srvrSock:Ljava/net/ServerSocket;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 4530
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 4531
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tcp-disco-srvr"

    iget-object v3, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 4533
    iget v1, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->setPriority(I)V

    .line 4535
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    :goto_0
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v2

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 4537
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    const/4 v3, 0x0

    iget-object v4, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->srvrSock:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4558
    :cond_0
    iget-object v1, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4559
    iget-object v1, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully bound to TCP port [port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localHost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 4560
    :cond_1
    return-void

    .line 4541
    :catch_0
    move-exception v0

    .line 4542
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v2

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 4543
    iget-object v1, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4544
    iget-object v1, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to local port (will try next port within range) [port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localHost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4547
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to local port. [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4535
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    goto/16 :goto_0

    .line 4551
    :cond_3
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind TCP server socket (possibly all ports in range are in use) [firstPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lastPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v3

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    .prologue
    .line 4518
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->port:I

    return v0
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
    .line 4565
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4566
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->srvrSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 4568
    .local v2, "sock":Ljava/net/Socket;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 4570
    .local v4, "tstamp":J
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4571
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Accepted incoming connection from addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4573
    :cond_0
    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-direct {v1, v3, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/net/Socket;)V

    .line 4575
    .local v1, "reader":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4576
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4578
    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->start()V

    .line 4579
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4581
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onServerSocketInitialized(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 4584
    .end local v1    # "reader":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
    .end local v2    # "sock":Ljava/net/Socket;
    .end local v4    # "tstamp":J
    :catch_0
    move-exception v0

    .line 4585
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4586
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to accept TCP connection."

    invoke-static {v3, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4588
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const-string v6, "Failed to accept TCP connection."

    invoke-static {v3, v6, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4590
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4591
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacInvalidArgumentError(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4592
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to accept TCP connection\n\tOn MAC OS you may have too many file descriptors open (simple restart usually solves the issue)"

    invoke-static {v3, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4598
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->srvrSock:Ljava/net/ServerSocket;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 4600
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 4579
    .restart local v1    # "reader":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
    .restart local v2    # "sock":Ljava/net/Socket;
    .restart local v4    # "tstamp":J
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4598
    .end local v1    # "reader":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
    .end local v2    # "sock":Ljava/net/Socket;
    .end local v4    # "tstamp":J
    :catchall_1
    move-exception v3

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->srvrSock:Ljava/net/ServerSocket;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->srvrSock:Ljava/net/ServerSocket;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 4594
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_6
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to accept TCP connection."

    invoke-static {v3, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 4604
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->interrupt()V

    .line 4606
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->srvrSock:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 4607
    return-void
.end method
