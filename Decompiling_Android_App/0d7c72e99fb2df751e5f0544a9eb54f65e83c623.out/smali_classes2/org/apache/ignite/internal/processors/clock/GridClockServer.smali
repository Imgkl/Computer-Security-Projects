.class public Lorg/apache/ignite/internal/processors/clock/GridClockServer;
.super Ljava/lang/Object;
.source "GridClockServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;
    }
.end annotation


# instance fields
.field private clockSync:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

.field private sock:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Ljava/net/DatagramSocket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->clockSync:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    return-object v0
.end method


# virtual methods
.method public afterStart()V
    .locals 2

    .prologue
    .line 98
    new-instance v1, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    .line 100
    new-instance v0, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-direct {v0, v1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 102
    .local v0, "th":Lorg/apache/ignite/thread/IgniteThread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/apache/ignite/thread/IgniteThread;->setPriority(I)V

    .line 104
    invoke-virtual {v0}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 105
    return-void
.end method

.method public beforeStop()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->readWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 125
    :cond_1
    return-void
.end method

.method public host()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public port()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public sendPacket(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;Ljava/net/InetAddress;I)V
    .locals 5
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->toBytes()[B

    move-result-object v2

    const/16 v3, 0x30

    invoke-direct {v1, v2, v3, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 139
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending time sync packet [msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send datagram message to remote node [addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public start(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 58
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->clockSync()Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->clockSync:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .line 59
    const-class v5, Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    .line 62
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTimeServerPortBase()I

    move-result v4

    .line 63
    .local v4, "startPort":I
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTimeServerPortRange()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v1, v5, -0x1

    .line 65
    .local v1, "endPort":I
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    .local v2, "locHost":Ljava/net/InetAddress;
    :goto_0
    move v3, v4

    .local v3, "p":I
    :goto_1
    if-gt v3, v1, :cond_0

    .line 71
    :try_start_1
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5, v3, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    .line 73
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully bound time server [host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :cond_0
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;

    if-nez v5, :cond_3

    .line 86
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to bind time server socket within specified port range [locHost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", startPort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", endPort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .end local v1    # "endPort":I
    .end local v2    # "locHost":Ljava/net/InetAddress;
    .end local v3    # "p":I
    .end local v4    # "startPort":I
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to start time server (failed to get local host address)"

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "endPort":I
    .restart local v4    # "startPort":I
    :cond_1
    :try_start_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_0

    .line 78
    .restart local v2    # "locHost":Ljava/net/InetAddress;
    .restart local v3    # "p":I
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/SocketException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to bind time server socket [host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 92
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
