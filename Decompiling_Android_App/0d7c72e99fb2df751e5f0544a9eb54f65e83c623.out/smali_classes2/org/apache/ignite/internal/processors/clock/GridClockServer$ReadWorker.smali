.class Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridClockServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/clock/GridClockServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/clock/GridClockServer;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)V
    .locals 3

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    .line 173
    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockServer;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->access$000(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid-time-server-reader"

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockServer;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->access$100(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5d

    const/16 v4, 0x30

    .line 178
    new-instance v2, Ljava/net/DatagramPacket;

    new-array v3, v4, [B

    invoke-direct {v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 181
    .local v2, "packet":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sock:Ljava/net/DatagramSocket;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->access$200(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 186
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received clock sync message from remote node [host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", port="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->fromBytes([BII)Lorg/apache/ignite/internal/processors/clock/GridClockMessage;

    move-result-object v1

    .line 193
    .local v1, "msg":Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockServer;->clockSync:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->access$300(Lorg/apache/ignite/internal/processors/clock/GridClockServer;)Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->onMessageReceived(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 195
    .end local v1    # "msg":Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to assemble clock server message (will ignore the packet) [host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", port="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockServer$ReadWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to receive message on datagram socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
