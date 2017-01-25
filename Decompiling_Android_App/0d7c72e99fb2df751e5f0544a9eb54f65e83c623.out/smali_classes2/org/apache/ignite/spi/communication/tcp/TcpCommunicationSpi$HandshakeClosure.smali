.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;
.super Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandshakeClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final rmtNodeId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/util/UUID;)V
    .locals 0
    .param p2, "rmtNodeId"    # Ljava/util/UUID;

    .prologue
    .line 2591
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;-><init>()V

    .line 2592
    iput-object p2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->rmtNodeId:Ljava/util/UUID;

    .line 2593
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/util/UUID;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    .prologue
    .line 2581
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public applyx(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x11

    .line 2600
    const/16 v5, 0x11

    :try_start_0
    new-array v0, v5, [B

    .line 2602
    .local v0, "b":[B
    const/4 v4, 0x0

    .line 2604
    .local v4, "n":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 2605
    rsub-int/lit8 v5, v4, 0x11

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2607
    .local v1, "cnt":I
    if-gez v1, :cond_0

    .line 2608
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to get remote node ID (end of stream reached)"

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2622
    .end local v0    # "b":[B
    .end local v1    # "cnt":I
    .end local v4    # "n":I
    :catch_0
    move-exception v2

    .line 2623
    .local v2, "e":Ljava/net/SocketTimeoutException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to perform handshake due to timeout (consider increasing \'connectionTimeout\' configuration property)."

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2610
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v0    # "b":[B
    .restart local v1    # "cnt":I
    .restart local v4    # "n":I
    :cond_0
    add-int/2addr v4, v1

    .line 2611
    goto :goto_0

    .line 2614
    .end local v1    # "cnt":I
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v3

    .line 2616
    .local v3, "id":Ljava/util/UUID;
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->rmtNodeId:Ljava/util/UUID;

    invoke-virtual {v5, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2617
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote node ID is not as expected [expected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->rmtNodeId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rcvd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2626
    .end local v0    # "b":[B
    .end local v3    # "id":Ljava/util/UUID;
    .end local v4    # "n":I
    :catch_1
    move-exception v2

    .line 2627
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to perform handshake."

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2619
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":[B
    .restart local v3    # "id":Ljava/util/UUID;
    .restart local v4    # "n":I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2620
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received remote node ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2631
    :cond_3
    :try_start_3
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 2632
    const/4 v5, -0x1

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 2633
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    move-result-object v5

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B
    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->access$800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 2635
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2637
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2638
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sent local node ID [locNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/Ignite;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rmtNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->rmtNodeId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2644
    :cond_4
    return-void

    .line 2641
    :catch_2
    move-exception v2

    .line 2642
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to perform handshake."

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public bridge synthetic applyx(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2581
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/OutputStream;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;->applyx(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
